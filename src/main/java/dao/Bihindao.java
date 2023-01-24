package dao;

import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.Bihin;
import dto.Bihin2;

public class Bihindao {

	private static Connection getConnection() throws URISyntaxException, SQLException {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	    URI dbUri = new URI(System.getenv("DATABASE_URL"));

	    String username = dbUri.getUserInfo().split(":")[0];
	    String password = dbUri.getUserInfo().split(":")[1];
	    String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();

	    return DriverManager.getConnection(dbUrl, username, password);
	}
	
	
	
	// 備品追加
	public static int registerStudent(Bihin bihin) {
		
		String sql = "INSERT INTO bihin VALUES(default, ? , ? )";
		int result = 0;
		
		try (
				Connection con = getConnection();	
				PreparedStatement pstmt = con.prepareStatement(sql);
				){
			pstmt.setString(1, bihin.getName());
			pstmt.setInt(2, bihin.getKazu());
			
			
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (URISyntaxException e) {
			e.printStackTrace();
		} finally {
			System.out.println(result + "件更新しました。");
		}
		return result;
	}


	// 備品一覧
	public static List<Bihin> selectAllbook(){
		
		// 実行するSQL
		String sql = "SELECT * FROM bihin";
		
		// 返却用のListインスタンス
		List<Bihin> result = new ArrayList<>();
				
		try (
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				){
			
			try (ResultSet rs = pstmt.executeQuery()){
				
				while(rs.next()) {
	
					// n行目のデータを取得
					String id = rs.getString("id");
					String name = rs.getString("name");
					int kazu = rs.getInt("kazu");
	
	
					// n件目のインスタンスを作成
					Bihin bihin = new Bihin(-1,name,kazu);
					
					// インスタンスをListに追加
					result.add(bihin);
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}catch (URISyntaxException e) {
			e.printStackTrace();
		}
	
		// Listを返却する。0件の場合は空のListが返却される。
		return result;
	}

	//備品削除（id）
		public static int deletebihin(Bihin2 id) {
			String sql = "DELETE FROM bihin WHERE id = ?";
			int result = 0;
			
			try (
				 Connection con = getConnection();	// DB接続
				 PreparedStatement pstmt = con.prepareStatement(sql);			// 構文解析
				 ){
				pstmt.setInt(1, id.getId());
				
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (URISyntaxException e) {
				e.printStackTrace();
			} finally {
				System.out.println(result + "件削除しました。");
			}
			return result;
		}
	}